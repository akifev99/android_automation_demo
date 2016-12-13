Before do
	$driver.start_driver	
end

After do |scenario|
	if scenario.failed?
		unless File.directory?("screenshots_android")
			FileUtils.mkdir_p("screenshots_android")
	end

	 time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
	 screenshot_name = "#{time_stamp}.png"
	 screenshot_file = File.join("screenshots_android", screenshot_name)
	 $driver.screenshot(screenshot_file)
	 embed("#{screenshot_file}", "image/png")
    end
    $driver.driver_quit
end

AfterConfiguration do 
	FileUtils.rm_r("screenshots_android") if File.directory?("screenshots_android")
end 

