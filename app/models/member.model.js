module.exports = (sequelize, Sequelize) => {
    const Member = sequelize.define("members", {
      member_id: {
        type: Sequelize.BIGINT
      },
      member_name: {
        type: Sequelize.STRING
      },
      birthday: {
        type: Sequelize.DATE
      },
      phone_number: {
        type: Sequelize.STRING
      },
      contact: {
        type: Sequelize.STRING
      },
      is_active: {
        type: Sequelize.BOOLEAN
      },
      is_admin: {
        type: Sequelize.BOOLEAN
      },
      img_path: {
        type: Sequelize.STRING
      },
      lever_id: {
        type: Sequelize.INTEGER
      }
    });
  
    return Member;
  };