SELECT peaks.peak_name as peak_name, rivers.river_name as river_name, LOWER(CONCAT_WS('', peak_name, SUBSTRING(river_name, 2))) as mix FROM peaks, rivers
WHERE RIGHT(peak_name, 1) = LEFT(river_name, 1)
ORDER BY mix
