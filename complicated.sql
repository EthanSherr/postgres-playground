with
  "r" as (
    select
      "time",
      "uuid",
      "run_uuid",
      "created_at",
      "modified_at"
    from
      "run_events"
    where
      run_uuid = $1
    order by
      "time" desc
  )
select
  r.uuid,
  r.run_uuid as run_uuid,
  r.time as time,
  r.created_at as created_at,
  r.modified_at,
  action_run.action_name,
  REPLACE (action_run.archive_file, '/bdi/', '/') as action_run_archive_file_url,
  action_run.end_status,
  action_run.action_uuid,
  action_run.element_id,
  mission_action_run.mission_name,
  CASE
    WHEN screenshot_run_event.uuid IS NULL THEN COALESCE(
      json_agg (
        (
          to_jsonb (action_channel_run) || jsonb_build_object (
            'run_event_uuid',
            r.uuid,
            'action_channel_run_flag_uuid',
            action_channel_run_flag.uuid,
            'data_url',
            CONCAT (
              REPLACE (action_channel_run.data_path, '/bdi/', '/'),
              '/',
              action_channel_run.filename
            )
          )
        ) - 'data_path' - 'filename' - 'action_run_uuid'
      ) FILTER (
        WHERE
          action_channel_run.uuid IS NOT NULL
      ),
      '[]'
    )
    ELSE json_build_array (
      json_build_object (
        'data_url',
        CONCAT (
          REPLACE (screenshot_run_event.data_path, '/bdi/', '/'),
          '/',
          screenshot_run_event.filename
        )
      )
    )
  END data_captures,
  CASE
    WHEN screenshot_run_event.uuid IS NULL THEN CONCAT (
      REPLACE (action_run.data_path, '/bdi/', '/'),
      '/',
      'metadata.json'
    )
    ELSE null
  END metadata_file_url,
  CASE
    WHEN screenshot_run_event.uuid IS NULL THEN 'daq'
    ELSE 'screenshot'
  END event_type
from
  "r"
  INNER JOIN mission_action_run_event ON mission_action_run_event.run_event_uuid = r.uuid
  INNER JOIN mission_action_run ON mission_action_run_event.mission_action_run_uuid = mission_action_run.uuid
  INNER JOIN action_run ON mission_action_run.action_run_uuid = action_run.uuid
  AND action_uuid = $2
  LEFT OUTER JOIN action_channel_run ON action_channel_run.action_run_uuid = action_run.uuid
  LEFT OUTER JOIN action_channel_run_flag ON action_channel_run_flag.action_channel_run_uuid = action_channel_run.uuid
  LEFT OUTER JOIN screenshot_run_event ON screenshot_run_event.run_event_uuid = r.uuid
where
  not "action_run"."is_autowalk_report" = $3
group by
  mission_action_run_event.uuid,
  mission_action_run.uuid,
  action_run.end_status,
  action_run.uuid,
  action_run.element_id,
  screenshot_run_event.uuid,
  r.uuid,
  r.run_uuid,
  r.time,
  r.created_at,
  r.modified_at
order by
  "time" desc