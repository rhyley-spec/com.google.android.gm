package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ecw;
import emj;

public class Country
  implements SafeParcelable
{
  public static final ecw CREATOR = new ecw();
  final int a;
  public String b;
  public String c;
  
  public Country()
  {
    a = 1;
  }
  
  public Country(int paramInt, String paramString1, String paramString2)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = emj.a(paramParcel, 20293);
    emj.b(paramParcel, 1, a);
    emj.a(paramParcel, 2, b, false);
    emj.a(paramParcel, 3, c, false);
    emj.b(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.Country
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */