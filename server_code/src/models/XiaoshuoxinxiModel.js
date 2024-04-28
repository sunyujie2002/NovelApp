import { Sequelize, DataTypes } from 'sequelize'
import moment from 'moment'
import sequelize from './sequelize'

// 小说信息
const XiaoshuoxinxiModel = sequelize.define('XiaoshuoxinxiModel', {
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
		comment: '主键id'
	},
	xiaoshuomingcheng: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '小说名称'
	},
	xiaoshuofenlei: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '小说分类'
	},
	fengmian: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '封面'
	},
	xiaoshuojianjie: {
		type: DataTypes.TEXT,
		defaultValue: '',
		allowNull: true,
		comment: '小说简介'
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
	storeupnum: {
		type: DataTypes.INTEGER,
		defaultValue: 0,
		allowNull: true,
		comment: '收藏数量'
	},
	clicktime: {
		type: DataTypes.DATE,
		allowNull: true,
		get() {
            return moment(this.getDataValue('clicktime')).format('YYYY-MM-DD HH:mm:ss')
        },
		defaultValue: DataTypes.NOW,
		comment: '最近点击时间'
	},
	clicknum: {
		type: DataTypes.INTEGER,
		defaultValue: 0,
		allowNull: true,
		comment: '点击次数'
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
	tableName: 'xiaoshuoxinxi'
})

export default XiaoshuoxinxiModel
