import { Router } from 'express'
import UsersController from './Users'
import FileController from './File'
import ConfigController from './Config'
import CommonController from './Common'
import NewsController from './News'
import MessagesController from './Messages'
import DuzheController from './Duzhe'
import ZuojiaController from './Zuojia'
import XiaoshuofenleiController from './Xiaoshuofenlei'
import XiaoshuoxinxiController from './Xiaoshuoxinxi'
import StoreupController from './Storeup'
import MenuController from './Menu'
import DiscusszuojiaController from './Discusszuojia'
import DiscussxiaoshuoxinxiController from './Discussxiaoshuoxinxi'
import ChapterxiaoshuoxinxiController from './Chapterxiaoshuoxinxi'

export default ({ config, db }) => {
	let api = Router()

	api.use('/users', UsersController({ config, db }))

	api.use('/file', FileController({ config, db }))

	api.use('/config', ConfigController({ config, db }))

	api.use('/', CommonController({ config, db }))

	api.use('/config', ConfigController({ config, db }))

	api.use('/users', UsersController({ config, db }))

	api.use('/news', NewsController({ config, db }))

	api.use('/messages', MessagesController({ config, db }))

	api.use('/duzhe', DuzheController({ config, db }))

	api.use('/zuojia', ZuojiaController({ config, db }))

	api.use('/xiaoshuofenlei', XiaoshuofenleiController({ config, db }))

	api.use('/xiaoshuoxinxi', XiaoshuoxinxiController({ config, db }))

	api.use('/storeup', StoreupController({ config, db }))

	api.use('/menu', MenuController({ config, db }))

	api.use('/discusszuojia', DiscusszuojiaController({ config, db }))

	api.use('/discussxiaoshuoxinxi', DiscussxiaoshuoxinxiController({ config, db }))

	api.use('/chapterxiaoshuoxinxi', ChapterxiaoshuoxinxiController({ config, db }))

	return api
}
