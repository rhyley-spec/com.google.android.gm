import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.firstparty.dataservice.VerifyPinRequest;

public final class efp
  implements Parcelable.Creator<VerifyPinRequest>
{
  public static VerifyPinRequest a(Parcel paramParcel)
  {
    String str1 = null;
    int j = emh.a(paramParcel);
    int i = 0;
    Account localAccount = null;
    String str2 = null;
    String str3 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default: 
        emh.b(paramParcel, k);
        break;
      case 1: 
        i = emh.e(paramParcel, k);
        break;
      case 2: 
        str3 = emh.m(paramParcel, k);
        break;
      case 3: 
        str2 = emh.m(paramParcel, k);
        break;
      case 4: 
        localAccount = (Account)emh.a(paramParcel, k, Account.CREATOR);
        break;
      case 5: 
        str1 = emh.m(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new emi("Overread allowed size end=" + j, paramParcel);
    }
    return new VerifyPinRequest(i, str3, str2, localAccount, str1);
  }
}

/* Location:
 * Qualified Name:     efp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */