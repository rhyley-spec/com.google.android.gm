package com.google.android.gms.auth.firstparty.dataservice;

import android.accounts.Account;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ees;
import emj;
import java.util.List;

public class GoogleAccountData
  implements SafeParcelable
{
  public static final ees CREATOR = new ees();
  final int a;
  @Deprecated
  String b;
  boolean c;
  public List<String> d;
  public String e;
  public String f;
  public Account g;
  
  public GoogleAccountData(int paramInt, String paramString1, boolean paramBoolean, List<String> paramList, String paramString2, String paramString3, Account paramAccount)
  {
    a = paramInt;
    b = paramString1;
    c = paramBoolean;
    d = paramList;
    e = paramString2;
    f = paramString3;
    if ((paramAccount == null) && (!TextUtils.isEmpty(paramString1)))
    {
      g = new Account(paramString1, "com.google");
      return;
    }
    g = paramAccount;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = emj.a(paramParcel, 20293);
    emj.b(paramParcel, 1, a);
    emj.a(paramParcel, 2, b, false);
    emj.a(paramParcel, 3, c);
    emj.a(paramParcel, 4, d, false);
    emj.a(paramParcel, 5, e, false);
    emj.a(paramParcel, 6, f, false);
    emj.a(paramParcel, 7, g, paramInt, false);
    emj.b(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.firstparty.dataservice.GoogleAccountData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */