#!/bin/bash
pdfcrop --margins '0 0 0 0' fig5_1_action_a1.pdf fig5_1_action_a1.pdf
pdfcrop --margins '0 0 0 0' fig5_1_action_a2.pdf fig5_1_action_a2.pdf

pdfcrop --margins '0 0 0 0' fig5_2_action_a1.pdf fig5_2_action_a1.pdf
pdfcrop --margins '0 0 0 0' fig5_2_action_a2.pdf fig5_2_action_a2.pdf
pdfcrop --margins '0 0 0 0' fig5_2_reward_a1.pdf fig5_2_reward_a1.pdf
pdfcrop --margins '0 0 0 0' fig5_2_reward_a2.pdf fig5_2_reward_a2.pdf

pdfcrop --margins '0 0 26 0' ieee_rts_profiles.pdf ieee_rts_profiles.pdf