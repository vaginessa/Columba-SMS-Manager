#ifndef PB_CONTACT_HEADER_MODEL_H
#define PB_CONTACT_HEADER_MODEL_H

////////////////////////////////////////////////////////////////////////////////
//
//	Includes
//
#include "pb_contact.h"
// Qt
#include <QAbstractListModel>
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
//
//	Forward Declarations
//
namespace db {
class CPhoneBookDataStore;
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
namespace pb { // Phone Book
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//
//	class CContactHeaderModel
//
class CContactHeaderModel : public QAbstractListModel
{
	Q_OBJECT
	typedef QAbstractListModel Base;

public:
	//
	//	Custom Roles
	//
	enum ECustomRoles
	{
		eHasUnreadMessageRole = Qt::UserRole
	};

public:
	// Constructor & Destructor
	CContactHeaderModel( QObject* pParent = nullptr );
	~CContactHeaderModel() = default;

public:
	//
	//	QAbstractListModel Interface <-
	// 
	int		 rowCount( const QModelIndex& parent = QModelIndex() ) const override;
	QVariant data( const QModelIndex& index, int role = Qt::DisplayRole ) const override;

public:
	//
	//	Own Interface
	//
	void							SetDataStore( db::CPhoneBookDataStore const* pDataStore );
	db::CPhoneBookDataStore const*	GetDataStore() const;

public slots:
	void onUpdateData();

protected slots:
	//
	//	Internal Slots
	//
	void onStoreAboutToBeCleared();

	void onContactAdded( pb::CContact const& oContact );
	void onContactAboutToBeRemoved( t_ContactID nContactID );

private:
	//
	//	Content
	//
	db::CPhoneBookDataStore const*	m_pDataStore;
	t_ContactHeaderList				m_lstHeaders;
};
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//
//	Inline Implementations
//
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
} // namespace gui
////////////////////////////////////////////////////////////////////////////////

#endif // PB_CONTACT_HEADER_MODEL_H
