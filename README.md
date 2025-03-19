# win-history-clean
개인용 윈도우 사용기록 제거 배치파일

배치파일 스케쥴러 등록
--
<pre>
schtasks /create /tn "WindowHistoryClean" /tr "(경로)" /sc onstart /ru SYSTEM /RL HIGHEST
</pre>
