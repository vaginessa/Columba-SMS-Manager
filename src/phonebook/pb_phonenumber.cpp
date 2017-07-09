////////////////////////////////////////////////////////////////////////////////
//
//	Includes
//
#include "pb_phonenumber.h"
//
//	Qt Includes
//
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
namespace pb { // Phone Book
////////////////////////////////////////////////////////////////////////////////

QRegExp CPhoneNumber::s_oValidator = QRegExp( "^\\(*\\+*[1-9]{0,3}\\)*-*[1-9]{0,3}[-. /]*\\(*[2-9]\\d{2}\\)*[-. /]*\\d{3}[-. /]*\\d{4} *e*x*t*\\.* *\\d{0,4}$" );

////////////////////////////////////////////////////////////////////////////////
//
//	class CPhoneNumber
//
bool CPhoneNumber::Validate( QString const& sPhoneNumber )
{
	if (sPhoneNumber.isEmpty())
		return false;
	return s_oValidator.indexIn( sPhoneNumber ) == 0? true : false;
}

QRegExp CPhoneNumber::GetValidationRegExp() { return s_oValidator; }
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
} // namespace se
////////////////////////////////////////////////////////////////////////////////
