.class public Lcom/google/android/common/html/parser/HtmlDocument$CDATA;
.super Lcom/google/android/common/html/parser/HtmlDocument$UnescapedText;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CDATA"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lcom/google/android/common/html/parser/HtmlDocument$UnescapedText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/android/common/html/parser/HtmlDocument$1;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$CDATA;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    invoke-super {p0}, Lcom/google/android/common/html/parser/HtmlDocument$UnescapedText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
