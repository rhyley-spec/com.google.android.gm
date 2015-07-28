.class Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientTextWatcher"
.end annotation


# instance fields
.field private mContent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/text/TextWatcher;

.field private mView:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic this$0:Lcom/android/mail/compose/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/android/mail/compose/ComposeActivity;Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)V
    .locals 1
    .param p2, "view"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p3, "listener"    # Landroid/text/TextWatcher;

    .prologue
    .line 2747
    iput-object p1, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->this$0:Lcom/android/mail/compose/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2741
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mContent:Ljava/util/HashMap;

    .line 2748
    iput-object p2, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mView:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2749
    iput-object p3, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mListener:Landroid/text/TextWatcher;

    .line 2750
    return-void
.end method

.method private hasChanged()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 2760
    iget-object v9, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->this$0:Lcom/android/mail/compose/ComposeActivity;

    iget-object v11, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mView:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v9, v11}, Lcom/android/mail/compose/ComposeActivity;->getAddressesFromList(Lcom/android/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->tokenizeRecips([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2761
    .local v2, "currRecips":[Ljava/lang/String;
    array-length v7, v2

    .line 2762
    .local v7, "totalCount":I
    const/4 v8, 0x0

    .line 2763
    .local v8, "totalPrevCount":I
    iget-object v9, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mContent:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2764
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_0

    .line 2766
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    if-eq v7, v8, :cond_1

    move v9, v10

    .line 2782
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    return v9

    .line 2770
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v6, v0, v4

    .line 2771
    .local v6, "recip":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mContent:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move v9, v10

    .line 2772
    goto :goto_1

    .line 2774
    :cond_2
    iget-object v9, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mContent:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .line 2775
    .local v1, "count":I
    if-gez v1, :cond_3

    move v9, v10

    .line 2776
    goto :goto_1

    .line 2778
    :cond_3
    iget-object v9, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mContent:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2782
    .end local v1    # "count":I
    .end local v6    # "recip":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private tokenizeRecips([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "recips"    # [Ljava/lang/String;

    .prologue
    .line 2787
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 2788
    .local v1, "recipAddresses":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2789
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2791
    :cond_0
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 2754
    invoke-direct {p0}, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->hasChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mListener:Landroid/text/TextWatcher;

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 2757
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2796
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->this$0:Lcom/android/mail/compose/ComposeActivity;

    iget-object v6, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mView:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v5, v6}, Lcom/android/mail/compose/ComposeActivity;->getAddressesFromList(Lcom/android/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->tokenizeRecips([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2797
    .local v4, "recips":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2798
    .local v3, "recip":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mContent:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2799
    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mContent:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2801
    :cond_0
    iget-object v6, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mContent:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/mail/compose/ComposeActivity$RecipientTextWatcher;->mContent:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2804
    .end local v3    # "recip":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 2809
    return-void
.end method
