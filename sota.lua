local api = {
	ButtonMode = {
		type = "lib",
		description = "This is used with Button objects to set an image or special color to each of its states.",
		childs = {
			Highlighted = {
				type = "value",
				description = "An enum value representing a Button's state.",
			},
			Normal = {
				type = "value",
				description = "An enum value representing a Button's state.",
			},
			Pressed = {
				type = "value",
				description = "An enum value representing a Button's state.",
			},
			Disabled = {
				type = "value",
				description = "An enum value representing a Button's state.",
			},
		},
	},

	ContentType = {
		type = "lib",
		description = "This is used when changing the content type of a input field. Setting it to password, for example, will change text to asterixes *****. Changing it to IntegerNumber will make it accept only numbers.",
		childs = {
			Standard = {
				type = "value",
			},
			Autocorrected = {
				type = "value",
			},
			IntegerNumber = {
				type = "value",
			},
			DecimalNumber = {
				type = "value",
			},
			Alphanumeric = {
				type = "value",
			},
			Name = {
				type = "value",
			},
			EmailAddress = {
				type = "value",
			},
			Password = {
				type = "value",
			},
			Pin = {
				type = "value",
			},
		}
	},

	TextAnchor = {
		type = "lib",
		description = "This is used in Text objects to choose where the text will be placed within its own Rect (the width and height you set when creating the text).",
		childs = {
			UpperLeft = {
				type = "value",
				description = "An enum value representing where to place text within its bounding box.",
			},
			UpperCenter = {
				type = "value",
				description = "An enum value representing where to place text within its bounding box.",
			},
			UpperRight = {
				type = "value",
				description = "An enum value representing where to place text within its bounding box.",
			},
			MiddleLeft = {
				type = "value",
				description = "An enum value representing where to place text within its bounding box.",
			},
			MiddleCenter = {
				type = "value",
				description = "An enum value representing where to place text within its bounding box.",
			},
			MiddleRight = {
				type = "value",
				description = "An enum value representing where to place text within its bounding box.",
			},
			LowerLeft = {
				type = "value",
				description = "An enum value representing where to place text within its bounding box.",
			},
			LowerCenter = {
				type = "value",
				description = "An enum value representing where to place text within its bounding box.",
			},
			LowerRight = {
				type = "value",
				description = "An enum value representing where to place text within its bounding box.",
			},
		},
	},

	Transition = {
		type = "lib",
		description = "This is used with Button Objects to determine transition between highlighted, normal, pressed, disabled state.\nYou can choose to either swap image or change colour when this transition event happen.",
		childs = {
			None = {
				type = "value",
			},
			ColorTint = {
				type = "value",
			},
			SpriteSwap = {
				type = "value",
			},
		},
	},

	UI = {
		type = "lib",
		description = "This is used as 'objectKind' in most UI functions. Some functions like ShroudOnMouseClick also return this as a variable.",
		childs = {
			Panel = {
				type = "value",
				description = "An enum value representing the Panel element.",
			},
			Image = {
				type = "value",
				description = "An enum value representing the Image element.",
			},
			Text = {
				type = "value",
				description = "An enum value representing the Text element.",
			},
			Button = {
				type = "value",
				description = "An enum value representing the Button element.",
			},
		},
	},

	ShroudButton = {
		type = "function",
		description = "DEPRECATED use ShroudUI* functions instead.\nDraws a button at the given position with defined width and height. After a completed click, if the button is true, the function will execute.",
		args = "(x: int, y: int, width: ,height: , imageID: int, text: string, tooltip: string)",
		returns = "(bool)",
	},

	ShroudButtonRepeat = {
		type = "function",
		description = "DEPRECATED use ShroudUI* functions instead.\nDraws a button at the given position with defined width and height. If button is pressed, the function will loop.",
		args = "(x: int, y: int, width: , height: , imageID, text: string, tooltip: string)",
		returns = "(bool)",
	},

	ShroudConsoleLog = {
		type = "function",
		description = "This function outputs text to the Lua console",
		args = "(Message: string)",
	},

	ShroudCurrentDeck = {
		type = "function",
		description = [[Returns the list of cards and quantities from the current deck.
	.name		string	Name of the card.
	.quantity	int		Number of cards in the deck.
]],
		args = "()",
		returns = "(object)",
	},

	ShroudDataPath = {
		type = "value",
		description = "A global variable (not a function) that holds a string of the path to the Application's data directory.",
		args = "()",
	},

	ShroudDeckList = {
		type = "function",
		description = [[Returns a list of the decks and the number of cards in them.
	.name		string	Name of the deck.
	.quantity	int		Number of cards in the deck, this does not include any cards locked on the deck.
]],
		args = "()",
		returns = "(object)",
	},

	ShroudDeltaTime = {
		type = "value",
		description = "A global variable (not a function) that holds a float containing the time since the last frame.",
		args = "()",
	},

	ShroudDestroyObject = {
		type = "function",
		description = "Destroys an object and all its children.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudDrawTexture = {
		type = "function",
		description = "DEPRECATED use ShroudUI* functions instead.\nDraws a texture at the given position with set dimensions.\nScale mode variable are StretchToFill, ScaleAndCrop and ScaleToFit",
		args = "(x: int, y: int, width: , height: , imageID: int, scaleMode: scaleMode)",
		returns = "(bool)",
	},

	ShroudEmoteList = {
		type = "function",
		description = "Returns a list of key/value pairs, with the name of each emote you possess as the value. The key (index) should be ignored.",
		args = "()",
		returns = "(string[])",
	},

	ShroudGetAttenuationAdventurerStatus = {
		type = "function",
		description = "Returns if attenuation is in effect for adventurer experience.",
		args = "()",
		returns = "(bool)",
	},

	ShroudGetAttenuationProducerStatus = {
		type = "function",
		description = "Returns if attenuation is in effect for producer experience.",
		args = "()",
		returns = "(bool)",
	},

	ShroudGetBuffCount = {
		type = "function",
		description = "Returns the total number of buffs on the avatar.",
		args = "()",
		returns = "(int)",
	},

	ShroudGetBuffDescription = {
		type = "function",
		description = [[Returns a description of the Buff specified by the integer argument.
	Note: not all integers are valid to be returned. They are hidden buffs. If an error occurs 'nil' is returned.]],
		args = "(identifier: int)",
		returns = "(string)",
	},

	ShroudGetBuffName = {
		type = "function",
		description = [[Returns the name of the Buff specified by the integer argument.
	Note: not all integers are valid to be returned. They are hidden buffs. If an error occurs 'nil' is returned.]],
		args = "(identifier: int)",
		returns = "(string)",
	},

	ShroudGetBuffTimeRemaining = {
		type = "function",
		description = [[Returns the remaining time of the buff specified by the integer argument.
	Note: not all integers are valid to be returned. They are hidden buffs. If an error occurs 'nil' is returned.]],
		args = "(identifier: int)",
		returns = "(string)",
	},

	ShroudGetCharacterSheetPosition = {
		type = "function",
		description = "Returns position of the character sheet, from top left corner?",
		args = "()",
		returns = "(int, int)",
	},

	ShroudGetCurrentSceneIsPOT = {
		type = "function",
		description = "Returns whether or not the scene is a player owned town.",
		args = "()",
		returns = "(bool)",
	},

	ShroudGetCurrentSceneIsPVP = {
		type = "function",
		description = "Returns whether or not the scene is player vs player.",
		args = "()",
		returns = "(bool)",
	},

	ShroudGetCurrentSceneMaxPlayerCount = {
		type = "function",
		description = "Returns the maximum number of players allowed in the scene.",
		args = "()",
		returns = "(int)",
	},

	ShroudGetCurrentSceneName = {
		type = "function",
		description = "Returns the name of the current scene.",
		args = "()",
		returns = "(string)",
	},

	ShroudGetCurrentSceneNameRaw = {
		type = "function",
		description = "Returns the unformatted name of the current scene (same as Elastic Search).",
		args = "()",
		returns = "(string)",
	},

	ShroudGetCurrentSceneOrientation = {
		type = "value",
		description = "A global variable (not a function) that holds a float containing the orientation of the current scene. Scenes may be a rotated copy of another scene.",
	},

	ShroudGetDeckCardList = {
		type = "function",
		description = [[Returns the list of cards from the named deck. Each entry in the list is an object (see below). If the deck name is not entered, it will check the currently equipped deck.
	.name		string	Name of the skill.
	.quantity	int		Number of cards of this skill in the deck.
]],
		args = "(DeckName: string)",
		returns = "(object)",
	},

	ShroudGetFullScreen = {
		type = "function",
		description = "Returns if the viewport is set to fullscreen or not.",
		args = "()",
		returns = "(bool)",
	},

	ShroudGetGameTime = {
		type = "function",
		description = [[Returns an object representing the New Brittanian (game) time. You can return all values (time = ShroudGetGameTime())
or individual values (day = ShroudGetGameTime().Day)
Available values are:
	.Day
	.Hour
	.Month
	.Year
	.Season
	.PeriodOfDay
]],
		args = "()",
		returns = "(object)",
	},

	ShroudGetInputText = {
		type = "function",
		description = "Returns the text written in the input object.",
		args = "(objectID: int)",
		returns = "(text: string)",
	},

	ShroudGetInventory = {
		type = "function",
		description = [[Returns items in the inventory as a table of entries. Each ro is of the format:
name, durability, primaryDurability, maxDurability, weight, quantity, value = item
	This does not include items inside containers.
]],
		args = "()",
		returns = "(table)",
	},

	ShroudGetKeyDown = {
		type = "function",
		description = "Returns true if the key is currently pressed. False otherwise.",
		args = "(KeyName: string)",
		returns = "(bool)",
	},

	ShroudGetOnKeyDown = {
		type = "function",
		description = "",
		args = "(KeyName: string)",
		returns = "(bool)",
	},

	ShroudGetOnKeyUp = {
		type = "function",
		description = "",
		args = "(KeyName: string)",
		returns = "(bool)",
	},

	ShroudGetParentID = {
		type = "function",
		description = "Returns the parent's objectID, -1 if it failed.",
		args = "(objectID: int, UI: UI)",
		returns = "(parentID: int)",
	},

	ShroudGetParentObjectKind = {
		type = "function",
		description = "Returns the UI enum of parentID or UI.None if it failed.",
		args = "(objectID: int, UI: UI)",
		returns = "(UI: UI)",
	},

	ShroudGetPartyMemberCurrentFocusInScene = {
		type = "function",
		description = "Returns named party member's current focus.",
		args = "(name: string)",
		returns = "(int)",
	},

	ShroudGetPartyMemberCurrentHealthInScene = {
		type = "function",
		description = "Returns named party member's current health.",
		args = "(name: string)",
		returns = "(int)",
	},

	ShroudGetPartyMemberMaxFocusInScene = {
		type = "function",
		description = "Returns named party member's maximum focus.",
		args = "(name: string)",
		returns = "(int)",
	},

	ShroudGetPartyMemberMaxHealthInScene = {
		type = "function",
		description = "Returns named party member's maximum health.",
		args = "(name: string)",
		returns = "(int)",
	},

	ShroudGetPartyMemberNamesInScene = {
		type = "function",
		description = "Returns the names of party members actually in the scene.",
		args = "()",
		returns = "(table)",
	},

	ShroudGetPosition = {
		type = "function",
		description = "Returns the position of the object specified.",
		args = "(objectID: int, UI: UI)",
		returns = "(x: int, y: int)",
	},

	ShroudGetPetBuff = {
		type = "function",
		description = [[Returns information about buffs and debuffs on the pet.
	.RuneName	string	Returns the name of the buff/debuff.
	.Effects	object	Returns the effects of the buff as an object (see below).

.Effects
	.Description		string	Returns a description of the effect.
	.Value				float	Returns the value of the efect.
	.CurrentDuration	float	Returns the remaining duration of the effect.
	.TotalDuration		float	Returns the total duration of the effect.
	.TotalTick			float	Returns the Tick number (Not always applied).
]],
		args = "()",
		returns = "(object)",
	},

	ShroudGetPetInfo = {
		type = "function",
		description = [[Returns information of your summoned pet. Example use: ShroudGetPetInfo().Name
	Below is the list of variables available.
	.Name				string	Returns the pet's name.
	.Level				int		Returns the pet's level.
	.isSummon			bool	Returns the pet's type (Summoned or Tamed).
	.Strength			float	Returns the pet's strength.
	.Dexterity			float	Returns the pet's dexterity.
	.Intelligence		float	Returns the pet's intelligence.
	.CurrentHealth		int		Returns the pet's current health.
	.MaxHealth			int		Returns the pet's maximum health.
	.HealthRegen		float	Returns the pet's out of combat health regeneration.
	.HealthRegenCombat	float	Returns the pet's in combat health regeneration.
	.AttackSpeed		float	Returns the pet's attack speed.
	.Resist				float	Returns the pet's damage resistance.
	.MagicResist		float	Returns the pet's magic resistance
	.Aborption			float	Returns the pet's absorption rate.
	.MoveSpeed			float	Returns the pet's movement speed.
	.MoveRate			float	Returns the pet's movement rate.
	.StrengthPower		float	Returns the pet's strength power.
	.TauntPower			float	Returns the pet's taunt power.
	.CriticalHit		float	Returns the pet's critical hit chance.
]],
		args = "()",
		returns = "(object)",
	},

	ShroudGetPlayerBuff = {
		type = "function",
		description = [[Returns information about buffs and debuffs on the avatar.
	.RuneName	string	Returns the name of the buff/debuff.
	.Effects	object	Returns the effects of the buff as an object (see below).

.Effects
	.Description		string	Returns a description of the effect.
	.Value				float	Returns the value of the efect.
	.CurrentDuration	float	Returns the remaining duration of the effect.
	.TotalDuration		float	Returns the total duration of the effect.
	.TotalTick			float	Returns the Tick number (Not always applied).
]],
		args = "()",
		returns = "(object)",
	},

	ShroudGetPlayerCombatMode = {
		type = "function",
		description = "Returns true if the avatar is currently in combat mode.",
		args = "()",
		returns = "(bool)",
	},

	ShroudGetPlayerName = {
		type = "function",
		description = "Returns the current Avatar's name",
		args = "()",
		returns = "(string)",
	},

	ShroudGetPooledAdventurerExperience = {
		type = "function",
		description = "Returns current total of pooled adventure experience.",
		args = "()",
		returns = "(int)",
	},

	ShroudGetPooledProducerExperience = {
		type = "function",
		description = "Returns current total of pooled producer experience.",
		args = "()",
		returns = "(int)",
	},

	ShroudGetPosition = {
		type = "function",
		description = "Returns the X,Y position of the supplied object ID and UI Type.",
		args = "(objectID: int, UI: UI)",
		returns = "(x: int, y: int)",
	},

	ShroudGetSceneCap = {
		type = "function",
		description = [[Return an object holding the Level and Skill value that the scene is capped at..
Can be used like this:
	ShroudGetSceneCap().Level
	Note that Level = 200 is effectively uncapped.
]],
		args = "()",
		returns = "(object)",
	},

	ShroudGetScreenX = {
		type = "function",
		description = "Returns current width of the viewport.",
		args = "()",
		returns = "(int)",
	},

	ShroudGetScreenY = {
		type = "function",
		description = "Returns current height of the viewport.",
		args = "()",
		returns = "(int)",
	},

	ShroudGetStatCount = {
		type = "function",
		description = "Returns the total number of statistics from the global stat table.",
		args = "()",
		returns = "(int)",
	},

	ShroudGetStatValueByNumber = {
		type = "function",
		description = "Returns the value of a stat from the table, by using a number.",
		args = "(StatIndex: int)",
		returns = "(int)",
	},

	ShroudGetStatNameByNumber = {
		type = "function",
		description = "Returns the key name of a stat from the table, by using a number.",
		args = "(StatIndex: int)",
		returns = "(string)",
	},

	ShroudGetStatValueByName = {
		type = "function",
		description = "Returns the value of a stat from the table, by using the key name.",
		args = "(StatName: string)",
		returns = "(int)",
	},

	ShroudGetStatDescriptionByNumber = {
		type = "function",
		description = "Returns the description of the stat from the table, by using a number.",
		args = "(StatIndex: int)",
		returns = "(string)",
	},

	ShroudGetTextureSize = {
		type = "function",
		description = "Returns the texture's' width and height with the previously loaded texture id.",
		args = "(textureID: int)",
		returns = "(width: float, height: float)",
	},

	ShroudGetTotalAdventurerExperience = {
		type = "function",
		description = "Returns the total adventurer experience acquired for this avatar. i.e. Total of what is pooled and what has been spent on skills.",
		args = "()",
		returns = "(int)",
	},

	ShroudGetTotalProducerExperience = {
		type = "function",
		description = "Returns the total producer experience acquired for this avatar. i.e. Total of what is pooled and what has been spent on skills.",
		args = "()",
		returns = "(int)",
	},

	ShroudGUILabel = {
		type = "function",
		description = "DEPRECATED use ShroudUI* functions instead.\nDisplays a label on the screen at the given coordinates and dimensions.",
		args = "(x: int, y: int, width: , height: , text: string)",
		returns = "(bool)",
	},

	ShroudHideLuaUI = {
		type = "function",
		description = "Hides all Lua UI elements. (Except OnGUI since its a diffent UI)\nReturns true if successful or false if an error occured.",
		args = "()",
		returns = "(bool)",
	},

	ShroudHideObject = {
		type = "function",
		description = "Hides an object.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudIsCharacterSheetActive = {
		type = "function",
		description = "Returns if the character sheet is currently being displayed.",
		args = "()",
		returns = "(bool)",
	},

	ShroudIsUIActive = {
		type = "function",
		description = "Returns if the game UI is active or not. Players can toggle it by pressing F9 in game.",
		args = "()",
		returns = "(bool)",
	},

	ShroudListPeriodics = {
		type = "function",
		description = "Returns the current list of periodic function previously created.",
		args = "()",
		returns = "(string)",
	},

	ShroudLoadTexture = {
		type = "function",
		description = "Loads the refered image file and returns an ID for it. Second parameter is true to fix the image, false to allow repeating. JPG and PNG only.",
		args = "(Filepath: string, Fixed: bool)",
		returns = "(ImageID: int)",
	},

	ShroudLuaPath = {
		type = "value",
		description = "A global variable (not a function) that holds a string of the path to the Lua script directory.",
	},

	ShroudModifyImage = {
		type = "function",
		description = "Modify the image of an object (panel, image or button).\nReturns true if succeeded or false if an error occured.",
		args = "(objectID: int, UI: UI, textureID: int)",
		returns = "(bool)",
	},

	ShroudModifyText = {
		type = "function",
		description = "Modify the text of a text object.\nReturns true if succeeded or false if an error occured.",
		args = "(objectID: int, text: string)",
		returns = "(bool)",
	},

	ShroudMouseX = {
		type = "value",
		description = "A global variable (not a function) that holds a float containing the mouse pointer's current X position.",
	},

	ShroudMouseY = {
		type = "value",
		description = "A global variable (not a function) that holds a float containing the mouse pointer's current Y position.",
	},

	ShroudOnInputChange = {
		type = "function",
		description = "This event is called when a change is made in an Input field.",
		args = "()",
		returns = "()",
	},

	ShroudOnConsoleInput = {
		type = "function",
		description = "This event is called every time a console receives text.\nInputType is Combat, System, etc., Avatar is the name of the avatar saying the message,  and Message is what is 'said'",
		args = "(InputType: string, Avatar: string, Message: string)",
		returns = "()",
	},

	ShroudOnGUI = {
		type = "function",
		description = "Deprecated, use the new UI!\nEvent called multiple times every frame by the game client to display user interface elements.",
		args = "()",
		returns = "()",
	},

	ShroudOnLogout = {
		type = "function",
		description = "This event is called when the user is back at the main menu.",
		args = "()",
		returns = "()",
	},

	ShroudOnMouseClick = {
		type = "function",
		description = "This event is called when the mouse clicks on a UI element. It will pass an int for objectID and the UI enum for objectKind.",
		args = "(objectID: int, objectKind: UI)",
		returns = "()",
	},

	ShroudOnMouseOut = {
		type = "function",
		description = "This event is called when the mouse is out of a UI element. It will pass an int for objectID and the UI enum for objectKind.",
		args = "(objectID: int, objectKind: UI)",
		returns = "()",
	},

	ShroudOnMouseOver = {
		type = "function",
		description = "This event is called when the mouse is over a UI element. It will pass an int for objectID and the UI enum for objectKind.",
		args = "(objectID: int, objectKind: UI)",
		returns = "()",
	},

	ShroudOnSceneLoaded = {
		type = "function",
		description = "This event is called when a scene is loaded and passes the name of the scene.",
		args = "(SceneName: string)",
		returns = "()",
	},

	ShroudOnSceneUnloaded = {
		type = "function",
		description = "Event is called when a scene is being unloaded",
		args = "()",
		returns = "()",
	},

	ShroudOnStart = {
		type = "function",
		description = "The first function called automatically when scripts are loaded, before ShroudOnUpdate and ShroudOnGUI.",
		args = "()",
		returns = "()",
	},

	ShroudOnUpdate = {
		type = "function",
		description = "Event called every frame by the game client.",
		args = "()",
		returns = "()",
	},

	ShroudPlayEmote = {
		type = "function",
		description = "Plays the given emote name. There is a 2 second delay between playing emotes.",
		arg = "(Emote: string)",
		returns = "(bool)",
	},

	ShroudPlayerCurrentFocus = {
		type = "value",
		description = "A global variable (not a function) that holds an int of the player's current focus",
	},

	ShroudPlayerCurrentHealth = {
		type = "value",
		description = "A global variable (not a function) that holds an int of the player's current health",
	},

	ShroudPlayerX = {
		type = "value",
		description = "A global variable (not a function) that holds a float containing the player's current X position.",
	},

	ShroudPlayerY = {
		type = "value",
		description = "A global variable (not a function) that holds a float containing the player's current Y position.",
	},

	ShroudPlayerZ = {
		type = "value",
		description = "A global variable (not a function) that holds a float containing the player's current Z position.",
	},

	ShroudRaycastObject = {
		type = "function",
		description = "Sets the raycast blocker to true or false on the object.\nSetting this to false will make clicks pass through.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI, Block: bool)",
		returns = "(bool)",
	},

	ShroudRegisterPeriodic = {
		type = "function",
		description = [[Set a function to be run each X seconds by registering it in a table.
First string is the name, second the function name to be called, float is the time in seconds when the periodic table should be ran, and bool is whether the periodic function should be called repeatedly, or only once.]],
		args = "(periodic-name: string, function-name: string, period: float, repeat: bool)",
		returns = "()",
	},

	ShroudRemovePeriodic = {
		type = "function",
		description = "Removes a periodic function, using the name you gave it.",
		args = "(periodic-name: string)",
		returns = "()",
	},

	ShroudRotateObject = {
		type = "function",
		description = "Rotates the object by the provided angle.\nReturn true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI, degree: float)",
		returns = "(bool)",
	},

	ShroudServerTime = {
		type = "value",
		description = "A global variable (not a function) that holds a string of the server's time. This is a UTC TZ formatted string.",
	},

	ShroudSetAnchorMax = {
		type = "function",
		description = [[Sets a vertical fixed point on this object in relation to its parent Rect. When resizing for example, it makes sure the object stays anchored to that point.
0.5, 0.5 being the middle. 0.0 0.0 being top left. 1.0 1.0 bottom right.
Returns true if succeeded or false if an error occured.]],
		args = "(objectID: int, UI: UI, x: float, y: float)",
		returns = "(bool)",
	},

	ShroudSetAnchorMin = {
		type = "function",
		description = [[Set a horizontal fixed point on the object in relation to its parent Rect. When resizing, for example, it makes sure that the object stays  anchored to that point.
0.5, 0.5 being the middle. 0.0 0.0 being top left. 1.0 1.0 bottom right.
Returns true if succeeded or false if an error occured.]],
		args = "(objectID: int, UI: UI, x: float, y: float)",
		returns = "(bool)",
	},

	ShroudSetButtonColor = {
		type = "function",
		description = "Sets a colour depending on the state of the button.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, ButtonMode: ButtonMode, hexColor: string)",
		returns = "(bool)",
	},

	ShroudSetButtonImage = {
		type = "function",
		description = "Sets an image to a button mode (highlighted, pressed, normal, disabled).",
		args = "(objectID: int, ButtonMode: ButtonMode, imageID: int)",
		returns = "(bool)",
	},

	ShroudSetButtonParent = {
		type = "function",
		description = "Sets a button element as a child of a parent.\nReturns the parent's objectID, -1 if its at the root of the hierarchy.",
		args = "(buttonID: int, parentID: int, UI: U)",
		returns = "(parentID: int)",
	},

	ShroudSetButtonTransition = {
		type = "function",
		description = "Sets the button to either swap image or change colour when triggering one of its states: highlighted, pressed, normal, disabled.",
		args = "(objectID: int, Transition: Transition)",
		returns = "()",
	},

	ShroudSetClickListener = {
		type = "function",
		description = "Adds a click listener that will send an event to ShroudOnMouseClick\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudSetColor = {
		type = "function",
		description = "Sets the colour of the object UI.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI, hexcolor: string)",
		returns = "(bool)",
	},

	ShroudSetDragguable = {
		type = "function",
		description = "Sets a dragguable script on an object.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudSetFontSize = {
		type = "function",
		description = "Set the size of the font in pixels.",
		args = "(objectID: int, UI: UI, size: int)",
		returns = "(bool)",
	},

	ShroudSetImageParent = {
		type = "function",
		description = "Sets an image element as a child of a parent.\nReturns the parent's objectID, -1 if its at the root of the hierarchy.",
		args = "(imageID: int, parentID: int, UI: UI)",
		returns = "(parentID: int)",
	},

	ShroudSetInOutListener = {
		type = "function",
		description = "Sets mouseover and mouseout script on an object.\nBy default, this is on all object. You can set it back if you have previously removed it.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudSetMask = {
		type = "function",
		description = "This will create a mask with the shape of that object and all children will be shown only in that shape.\nUI must be UI.Image or UI.Panel.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudSetPanelParent = {
		type = "function",
		description = "Sets a panel element as a child of a parent.\nReturns the parent's objectID, or -1 if its at the root of the hierarchy.",
		args = "(panelID: int, parentID: int, UI: UI)",
		returns = "(parentID: int)",
	},

	ShroudSetParent = {
		type = "function",
		description = "Sets an object as a child of a parent.\nReturns the parentID or -1 if it failed.",
		args = "(objectID: int, UI: UI, parentID: int, UI: UI)",
		returns = "(parentID: int)",
	},

	ShroudSetPivot = {
		type = "function",
		description = [[Sets the point on the object where position and rotation will occur,
0.5, 0.5 being the middle. 0.0 0.0 being top left. 1.0 1.0 bottom right.
Returns true if successful or false if an error occured.
]],
		args = "(objectID: int, UI: UI, x: float, y: float)",
		returns = "(bool)",
	},

	ShroudSetPosition = {
		type = "function",
		description = "Modifies the position of an object.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI, x: int, y: int)",
		returns = "(bool)",
	},

	ShroudSetResizable = {
		type = "function",
		description = "This will trigger the window to be resizable when mouse touches the edge.\nDirection is a string and can be: 'None', 'Horizontal', or 'Vertical'. Not setting anything will use both horizontal and vertical AND corner.\nREQUIRES a dragguable script be set.",
		args = "(objectID: int, UI: UI, direction: string)",
		returns = "(bool)",
	},

	ShroudSetScale = {
		type = "function",
		description = "This will set the scale of the object and its children. 1 being default (100%), 2 would make the scale 200%.",
		args = "(objectID: int, UI: UI, scaleFactor: float)",
		returns = "()",
	},

	ShroudSetSize = {
		type = "function",
		description = "Modify the size of an object.\nReturn true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI, x: float, y: float)",
		returns = "(bool)",
	},

	ShroudSetTextAlignment = {
		type = "function",
		description = "Align the text within the object created (width and height).\nReturns true if succeeded or false if an error occured.",
		args = "(objectID: int, TextAnchor: TextAnchor)",
		returns = "(bool)",
	},

	ShroudSetTextParent = {
		type = "function",
		description = "Sets a text element as a child of a parent.\nReturns parent's objectID, -1 if its at the root of the hierarchy.",
		args = "(textID: int, parentID: int, UI: UI)",
		returns = "(parentID: int)",
	},

	ShroudSetTransparency = {
		type = "function",
		description = "Changes the opacity (0.0 means NOT opaque, 1.0 means completely opaque) of the object.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI, transparency: float)",
		returns = "(bool)",
	},

	ShroudUIText = {
		type = "function",
		description = "Creates a UI Text element.\nReturns the ID of the newly created text, or -1 on error.",
		args = "(text: string, fontSize: int, x: int, y: int, width: int, height: int, [parentID: int], [UI: UI] )",
		returns = "(textID: int)",
	},

	ShroudShowLuaUI = {
		type = "function",
		description = "Shows all Lua UI elements.\nReturn true if successful or false if an error occured.",
		args = "()",
		returns = "(bool)",
	},

	ShroudShowObject = {
		type = "function",
		description = "Shows a previously hidden object.\nReturn true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudTime = {
		type = "value",
		description = "A global variable (not a function) that holds a float containing the time since the game was started.",
	},

	ShroudUIButton = {
		type = "function",
		description = "Creates a UI Button element. Clicking will fire an event for ShroudOnMouseClick function.\nReturns the ID of the newly created button or -1 on error.",
		args = "(x: int, y: int, width: int, height: int, [textureID: int], [parentID: int], [UI: UI])",
		returns = "(int)",
	},

	ShroudUIImage = {
		type = "function",
		description = "Creates a UI Image element.\nReturns the ID of the newly created image or -1 on error.",
		args = "(x: int, y: int, width: int, height: int, [textureID: int], [parentID: int], [UI: UI])",
		returns = "(int)",
	},

	ShroudUIInput = {
		type = "function",
		description = "Creates a UI Input field. Change from the input fields are returned via ShroudOnInputChange event.\nReturns the ID of the newly created button or -1 if null.",
		args = "(x: int, y: int, width: int, height: int, [parentID: int, UI: UI])",
		returns = "()",
	},

	ShroudUIMinMaxSize = {
		type = "function",
		description = "Min and max are float values you set to let the player resize an object down to min and up to max size in pixels.\nDirection is a string and can be: 'None', 'Horizontal', or 'Vertical'\nREQUIRES a dragguable script be set.",
		args = "(objectID: int, UI: UI , min: float, max: float, direction: string)",
		returns = "()",
	},

	ShroudUIPanel = {
		type = "function",
		description = "Creates a UI Panel element. Returns the ID if the newly created panel, or -1 on error.",
		args = "(x: int, y: int, width: int, height: int, [textureID: int], [parentID: int], [UI: UI])",
		returns = "(panelID: int)",
	},

	ShroudUnsetClickListener = {
		type = "function",
		description = "Removes a click listener.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudUnsetDragguable = {
		type = "function",
		description = "Unsets a dragguable script from an object.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudUnsetInOutListener = {
		type = "function",
		description = "Unsets mouseover and mouseout script from an object.\nReturns true if successful or false if an error occured.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudUnsetMask = {
		type = "function",
		description = "Unsets a previously set mask.",
		args = "(objectID: int, UI: UI)",
		returns = "(bool)",
	},

	ShroudUseLuaConsoleForPrint = {
		type = "function",
		description = "Set true or false to switch the interpreter from printing via console.",
		args = "(UseLuaConsole: bool)",
		returns = "()",
	},
}

-------------------------------------------------------------------------------


-------------------------------------------------------------------------------

--[[

	token = {
		type = "function",
		description = "",
		args = "()",
		returns = "()",
	},

]]

--[[
local spec = {
	apitype = "lua",
	exts = {"lua"},
	lexer = wxstc.wxSTC_LEX_LUA,
	--stylingbits = 7,

	lexerstyleconvert = {
		text = {wxstc.wxSTC_LUA_IDENTIFIER,},

		lexerdef = {wxstc.wxSTC_LUA_DEFAULT,},
		comment = {
			wxstc.wxSTC_LUA_COMMENT,
			wxstc.wxSTC_LUA_COMMENTLINE,
			wxstc.wxSTC_LUA_COMMENTDOC,
		},

		stringtxt = {
			wxstc.wxSTC_LUA_STRING,
			wxstc.wxSTC_LUA_CHARACTER,
			wxstc.wxSTC_LUA_LITERALSTRING,
		},

		stringeol = {wxstc.wxSTC_LUA_STRINGEOL,},
		preprocessor= {wxstc.wxSTC_LUA_PREPROCESSOR,},
		operator = {wxstc.wxSTC_LUA_OPERATOR,},
		number = {wxstc.wxSTC_LUA_NUMBER,},

		keywords0 = {wxstc.wxSTC_LUA_WORD,},
		keywords1 = {wxstc.wxSTC_LUA_WORD2,},
		keywords2 = {wxstc.wxSTC_LUA_WORD3,},
		keywords3 = {wxstc.wxSTC_LUA_WORD4,},
	},

	keywords = {
		-- keywords
		[ [ ] ],

		-- constants/variables
		[ [ ShroudDataPath ShroudDeltaTime ] ],

		-- core/global functions
		[ [ShroudConsoleLog ShroudCurrentDeck ShroudDeckList ] ],

		-- library functions
		[ [ ] ],
	},
}
]]

return {
	name = "SotA Lua",
	description = "Shroud of the Avatar Lua additions",
	author = "Niel Archer",
	version = 0.1,

	onRegister = function(self)
		-- add API with name "SotA" and group "lua"
		ide:AddAPI("lua", "SotA-api", api)

		--ide:AddSpec("SotA-spec", spec)
	end,

	onUnRegister = function(self)
		-- remove API with name "SotA" from group "lua"
		ide:RemoveAPI("lua", "SotA-api")

		--ide:RemoveSpec("SotA-spec")
	end,
}
