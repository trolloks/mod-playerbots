-- #########################################################
-- Playerbots - Add instance unbind texts for InstanceUnbindAction
-- Localized for all WotLK locales (koKR, frFR, deDE, zhCN,
-- zhTW, esES, esMX, ruRU)
-- #########################################################

-- ---------------------------------------------------------
-- instance_unbind_response
-- I'm unbinding instances
-- ---------------------------------------------------------
INSERT INTO `ai_playerbot_texts`
    (`name`, `text`, `say_type`, `reply_type`,
     `text_loc1`, `text_loc2`, `text_loc3`, `text_loc4`,
     `text_loc5`, `text_loc6`, `text_loc7`, `text_loc8`)
SELECT
    'instance_unbind_response',
    "I'm unbinding instances",
    0, 0,
    -- koKR
    "인스턴스 해제 중입니다",
    -- frFR
    "Je suis en train de désassocier les instances",
    -- deDE
    "Ich löse Instanzen auf",
    -- zhCN
    "我正在解除实例绑定",
    -- zhTW
    "我正在解除實例綁定",
    -- esES
    "Estoy desvinculando instancias",
    -- esMX
    "Estoy desvinculando instancias",
    -- ruRU
    "Я отвязываю подземелья"
WHERE NOT EXISTS (
    SELECT 1 FROM `ai_playerbot_texts` WHERE `name` = 'instance_unbind_response'
);

-- ---------------------------------------------------------
-- instance_unbind_gm_error
-- You must be a GM to use instance unbind
-- ---------------------------------------------------------
INSERT INTO `ai_playerbot_texts`
    (`name`, `text`, `say_type`, `reply_type`,
     `text_loc1`, `text_loc2`, `text_loc3`, `text_loc4`,
     `text_loc5`, `text_loc6`, `text_loc7`, `text_loc8`)
SELECT
    'instance_unbind_gm_error',
    "You must be a GM to use instance unbind",
    0, 0,
    -- koKR
    "인스턴스 해제를 사용하려면 GM이어야 합니다",
    -- frFR
    "Vous devez être un GM pour utiliser la désassociation d'instance",
    -- deDE
    "Sie müssen ein GM sein, um die Instanzbindung aufzuheben",
    -- zhCN
    "你必须是GM才能使用实例解绑",
    -- zhTW
    "你必須是GM才能使用實例解除綁定",
    -- esES
    "Debes ser un GM para usar la desvinculación de instancias",
    -- esMX
    "Debes ser un GM para usar la desvinculación de instancias",
    -- ruRU
    "Вы должны быть GM, чтобы использовать отвязку подземелий"
WHERE NOT EXISTS (
    SELECT 1 FROM `ai_playerbot_texts` WHERE `name` = 'instance_unbind_gm_error'
);