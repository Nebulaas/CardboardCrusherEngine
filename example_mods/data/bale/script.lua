local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
	--if not allowCountdown and not seenCutscene then
		if difficulty ~= 0 then 
			setProperty('inCutscene', true);
			runTimer('startDialogueHard', 0.8);
			allowCountdown = true;
			return Function_Stop;
		elseif difficulty == 0 then
			setProperty('inCutscene', true);
			runTimer('startDialogue', 0.8);
			allowCountdown = true;
			return Function_Stop;
		end
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogueHard' then -- Timer completed, play dialogue
		startDialogue('dialogueA', 'breakfast');
	elseif tag == 'startDialogue' then
		startDialogue('dialogueB', 'breakfast');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end