package com.google.android.gms.people.identity.internal.models;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.people.identity.models.Person.Addresses;
import emj;
import fut;
import java.util.HashSet;
import java.util.Set;

public class PersonImpl$AddressesImpl
  implements SafeParcelable, Person.Addresses
{
  public static final fut CREATOR = new fut();
  final Set<Integer> a;
  final int b;
  PersonImpl.MetadataImpl c;
  String d;
  String e;
  String f;
  String g;
  String h;
  String i;
  String j;
  String k;
  String l;
  String m;
  
  public PersonImpl$AddressesImpl()
  {
    a = new HashSet();
    b = 1;
  }
  
  public PersonImpl$AddressesImpl(Set<Integer> paramSet, int paramInt, PersonImpl.MetadataImpl paramMetadataImpl, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10)
  {
    a = paramSet;
    b = paramInt;
    c = paramMetadataImpl;
    d = paramString1;
    e = paramString2;
    f = paramString3;
    g = paramString4;
    h = paramString5;
    i = paramString6;
    j = paramString7;
    k = paramString8;
    l = paramString9;
    m = paramString10;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int n = emj.a(paramParcel, 20293);
    Set localSet = a;
    if (localSet.contains(Integer.valueOf(1))) {
      emj.b(paramParcel, 1, b);
    }
    if (localSet.contains(Integer.valueOf(2))) {
      emj.a(paramParcel, 2, c, paramInt, true);
    }
    if (localSet.contains(Integer.valueOf(3))) {
      emj.a(paramParcel, 3, d, true);
    }
    if (localSet.contains(Integer.valueOf(4))) {
      emj.a(paramParcel, 4, e, true);
    }
    if (localSet.contains(Integer.valueOf(5))) {
      emj.a(paramParcel, 5, f, true);
    }
    if (localSet.contains(Integer.valueOf(6))) {
      emj.a(paramParcel, 6, g, true);
    }
    if (localSet.contains(Integer.valueOf(7))) {
      emj.a(paramParcel, 7, h, true);
    }
    if (localSet.contains(Integer.valueOf(8))) {
      emj.a(paramParcel, 8, i, true);
    }
    if (localSet.contains(Integer.valueOf(9))) {
      emj.a(paramParcel, 9, j, true);
    }
    if (localSet.contains(Integer.valueOf(10))) {
      emj.a(paramParcel, 10, k, true);
    }
    if (localSet.contains(Integer.valueOf(11))) {
      emj.a(paramParcel, 11, l, true);
    }
    if (localSet.contains(Integer.valueOf(12))) {
      emj.a(paramParcel, 12, m, true);
    }
    emj.b(paramParcel, n);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.people.identity.internal.models.PersonImpl.AddressesImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */