import { Sequelize, DataTypes } from 'sequelize'
import moment from 'moment'
import sequelize from './sequelize'

// 作家
const ZuojiaModel = sequelize.define('ZuojiaModel', {
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
		comment: '主键id'
	},
	zuojiazhanghao: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '作家账号'
	},
	zuojiaxingming: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '作家姓名'
	},
	mima: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '密码'
	},
	zhaopian: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '照片'
	},
	xingbie: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '性别'
	},
	dianhua: {
		type: DataTypes.BIGINT,
		defaultValue: '',
		allowNull: true,
		comment: '电话'
	},
	zuojiajianjie: {
		type: DataTypes.TEXT,
		defaultValue: '',
		allowNull: true,
		comment: '作家简介'
	},
	addtime: {
  		type: DataTypes.DATE,
  		defaultValue: DataTypes.NOW,
    	allowNull: false,
    	get() {
            return moment(this.getDataValue('addtime')).format('YYYY-MM-DD HH:mm:ss')
        },
		comment: '添加时间'
	}
}, {
	timestamps: false,
	freezeTableName: true,
	tableName: 'zuojia'
})

export default ZuojiaModel
