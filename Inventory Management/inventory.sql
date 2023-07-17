-- (A) ITEMS TABLE
CREATE TABLE items (
  item_sku TEXT,
  item_name TEXT NOT NULL,
  item_unit TEXT NOT NULL,
  item_qty INTEGER NOT NULL,
  PRIMARY KEY("item_sku")
);

CREATE INDEX `item_name`
  ON `items`( ('item_name'));

-- (B) DUMMY DATA
INSERT INTO "items" VALUES
('ABC001','Pencil Box','PC','123'),
('ABC002','NoteBook','BX','234'),
('ABC003','Stencils','EA','321'),
('ABC004','Geometry Box','CS','456'),
('ABC005','Pen','PL','543');

-- (C) ITEMS MOVEMENT
CREATE TABLE `item_mvt` (
  item_sku TEXT,
  mvt_date TEXT,
  mvt_direction TEXT NOT NULL,
  mvt_qty INTEGER NOT NULL,
  mvt_notes TEXT,
  PRIMARY KEY("item_sku", "mvt_date")
);

CREATE INDEX `mvt_direction`
  ON `item_mvt` (`mvt_direction`);