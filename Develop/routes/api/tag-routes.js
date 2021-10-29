const router = require('express').Router();
const { Tag, Product, ProductTag } = require('../../models');

// The `/api/tags` endpoint

router.get('/', (req, res) => {
  // find all tags
  // be sure to include its associated Product data
  try {
    const tag = await Tag.findAll();
    res.status(200).json(tag);
  } catch (err) {
    res.status(500).json(err);
  }
});

router.get('/:id', (req, res) => {
  try {
    const tag = await Tag.findByPk(req.params.id, {
      include: [{ model: Tag, through: ProductTag, as: 'tag_producttag' }]
    });

    if (!tag) {
      res.status(404).json({ message: 'No tag found with this id!' });
      return;
    }

    res.status(200).json(tag);
  } catch (err) {
    res.status(500).json(err);
  }
});

router.post('/', (req, res) => {
  try {
    const tag = await Tag.create(req.body);
    res.status(200).json(tag);
  } catch (err) {
    res.status(400).json(err);
  }
});

router.put('/:id', (req, res) => {
  // update a tag's name by its `id` value
});

router.delete('/:id', (req, res) => {
  // delete on tag by its `id` value
    try {
      const tag = await Tag.destroy({
        where: {
          id: req.params.id
        }
      });
  
      if (!tag) {
        res.status(404).json({ message: 'No tag found with this id!' });
        return;
      }
  
      res.status(200).json(tag);
    } catch (err) {
      res.status(500).json(err);
    }
});

module.exports = router;
