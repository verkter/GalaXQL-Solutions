CREATE TRIGGER starcreated 
BEFORE INSERT ON stars
BEGIN
    DELETE FROM hilight;
    INSERT INTO hilight (starid) VALUES (NEW.starid);
END;
