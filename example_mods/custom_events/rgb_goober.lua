function onCreate()
	epic = false
end


function onEvent(n,v1,v2)

	if n == 'rgb_goober' then
		if v1 == 'true' then
			epic = true
			fireItUp()
		end
		if v1 == 'false' then
			epic = false
			--debugPrint("should've stopped")
			runTimer('stopPls',0.26)
			function onTimerCompleted(stopPls)
				--doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')
			end
		end

		--speed = v2
		--debugPrint(speed)

	 end
end

function fireItUp()
	gaming()
end


function gaming()

	if epic == false then 
		goto stop 
		doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')
	end

	doTweenColor('redTween', 'dad', 'FF0000', 0.25, 'linear')

	function onTweenCompleted(redTween)

		if epic == false then 
																			
			doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')

		end

		doTweenColor('orangTween', 'dad', 'FF8800', 0.25, 'linear')

			function onTweenCompleted(orangTween)

				if epic == false then 
																			
					doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')

				end

				doTweenColor('yellowTween', 'dad', 'FFFF00', 0.25, 'linear')

					function onTweenCompleted(yellowTween)

						if epic == false then 
																			
							doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')

						end

								doTweenColor('greenTween', 'dad', '00FF00', 0.25, 'linear')

									function onTweenCompleted(greenTween)

										if epic == false then 
																			
											doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')

										end

										doTweenColor('aquaTween', 'dad', '00FFaa', 0.25, 'linear')

											function onTweenCompleted(aquaTween)

												if epic == false then 
																			
											doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')

										end

												doTweenColor('blueTween', 'dad', '0077FF', 0.25, 'linear')

													function onTweenCompleted(blueTween)

														if epic == false then 
																			
											doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')

										end

														doTweenColor('purpleTween', 'dad', '8400FF', 0.25, 'linear')

															function onTweenCompleted(purpleTween)

																if epic == false then 
																			
											doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')

										end

																doTweenColor('magentaTween', 'dad', 'FF00E6', 0.25, 'linear')

																	function onTweenCompleted(magentaTween)

																		if epic == false then 
																			
																			doTweenColor('stopTween', 'dad', 'FFFFFF', 0.25, 'linear')
																		else
																			fireItUp()
																		end

																		

																	end

																end

															end

														end

													end

												end

											

										end

									end

									::stop::

									
								end

