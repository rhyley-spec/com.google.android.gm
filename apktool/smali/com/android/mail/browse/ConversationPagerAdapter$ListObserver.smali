.class Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;
.super Landroid/database/DataSetObserver;
.source "ConversationPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/ConversationPagerAdapter;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;->this$0:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/ConversationPagerAdapter;Lcom/android/mail/browse/ConversationPagerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mail/browse/ConversationPagerAdapter;
    .param p2, "x1"    # Lcom/android/mail/browse/ConversationPagerAdapter$1;

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;-><init>(Lcom/android/mail/browse/ConversationPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;->this$0:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    .line 437
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method
