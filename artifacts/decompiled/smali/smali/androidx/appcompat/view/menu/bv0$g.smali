.class public Landroidx/appcompat/view/menu/bv0$g;
.super Landroidx/appcompat/view/menu/bv0$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/bv0;->y0(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A:Ljava/lang/String;

.field public final synthetic B:Landroidx/appcompat/view/menu/bv0;

.field public final synthetic z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$g;->B:Landroidx/appcompat/view/menu/bv0;

    iput-object p9, p0, Landroidx/appcompat/view/menu/bv0$g;->z:Ljava/lang/String;

    iput-object p10, p0, Landroidx/appcompat/view/menu/bv0$g;->A:Ljava/lang/String;

    invoke-direct/range {p0 .. p8}, Landroidx/appcompat/view/menu/bv0$m;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "authTokenLabelKey"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v1}, Landroidx/appcompat/view/menu/bv0$m;->onResult(Landroid/os/Bundle;)V

    :cond_0
    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/bv0$m;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public w2()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$g;->A:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    return-void
.end method

.method public y2(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0$m;->y2(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAuthTokenLabel, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$g;->z:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", authTokenType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$g;->A:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
