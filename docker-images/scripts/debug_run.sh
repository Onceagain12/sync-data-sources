#!/bin/bash
SDS_SKIP_ES_DATA=1 SDS_SKIP_ES_LOG=1 SDS_DEBUG=2 SDS_CMDDEBUG=2 SDS_ONLY_P2O=1 SDS_SKIP_AFFS='' SDS_DRY_RUN='' syncdatasources 2>&1 | tee -a /sds.log
