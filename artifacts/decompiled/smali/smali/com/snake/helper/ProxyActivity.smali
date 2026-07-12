.class public Lcom/snake/helper/ProxyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snake/helper/ProxyActivity$P3_L;,
        Lcom/snake/helper/ProxyActivity$P3;,
        Lcom/snake/helper/ProxyActivity$P2_L;,
        Lcom/snake/helper/ProxyActivity$P2;,
        Lcom/snake/helper/ProxyActivity$P1_L;,
        Lcom/snake/helper/ProxyActivity$P1;,
        Lcom/snake/helper/ProxyActivity$P0_L;,
        Lcom/snake/helper/ProxyActivity$P0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    return-void
.end method
