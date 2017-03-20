#!/bin/sh -e

REMOTE_HOST="127.0.0.101"
SCENARIO_FILE="scenarios/register.xml"
INPUT_FILE="scenarios/input.csv"
MSG_FILE="/tmp/sipp_msg.log"
LOG_FILE="/tmp/sipp.log"
ERR_LOG_FILE="/tmp/sipp_err.log"
SIPP_EXTRA_ARGS=" -m 1000 -r 1000 " # -timeout 15s"

sipp \
	${REMOTE_HOST} \
	-inf ${INPUT_FILE}\
	-sf "${SCENARIO_FILE}" \
	-trace_rtt -rtt_freq 1 \
	-trace_err -trace_logs -trace_msg \
	-message_file "${MSG_FILE}" \
	-error_file "${ERR_LOG_FILE}" \
	-log_file "${LOG_FILE}"  \
	${SIPP_EXTRA_ARGS}
