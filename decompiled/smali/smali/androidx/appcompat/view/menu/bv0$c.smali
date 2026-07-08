.class public Landroidx/appcompat/view/menu/bv0$c;
.super Landroidx/appcompat/view/menu/bv0$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/bv0;->k1(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A:Landroid/accounts/Account;

.field public final synthetic B:Ljava/lang/String;

.field public final synthetic C:Z

.field public final synthetic D:Z

.field public final synthetic E:Ljava/lang/String;

.field public final synthetic F:Landroidx/appcompat/view/menu/bv0;

.field public final synthetic z:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$c;->F:Landroidx/appcompat/view/menu/bv0;

    iput-object p9, p0, Landroidx/appcompat/view/menu/bv0$c;->z:Landroid/os/Bundle;

    iput-object p10, p0, Landroidx/appcompat/view/menu/bv0$c;->A:Landroid/accounts/Account;

    iput-object p11, p0, Landroidx/appcompat/view/menu/bv0$c;->B:Ljava/lang/String;

    iput-boolean p12, p0, Landroidx/appcompat/view/menu/bv0$c;->C:Z

    iput-boolean p13, p0, Landroidx/appcompat/view/menu/bv0$c;->D:Z

    iput-object p14, p0, Landroidx/appcompat/view/menu/bv0$c;->E:Ljava/lang/String;

    invoke-direct/range {p0 .. p8}, Landroidx/appcompat/view/menu/bv0$m;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 9

    if-eqz p1, :cond_3

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountType"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/bv0$c;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$c;->F:Landroidx/appcompat/view/menu/bv0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$c;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v6}, Landroidx/appcompat/view/menu/bv0;->e3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "android.accounts.expiry"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/bv0$c;->D:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-lez v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$c;->F:Landroidx/appcompat/view/menu/bv0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$c;->A:Landroid/accounts/Account;

    iget-object v4, p0, Landroidx/appcompat/view/menu/bv0$c;->E:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/bv0$c;->B:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Landroidx/appcompat/view/menu/bv0;->f3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x5

    const-string v0, "the type and name should not be empty"

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/bv0$m;->onError(ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/bv0$m;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public w2()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$c;->A:Landroid/accounts/Account;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$c;->B:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$c;->z:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public y2(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$c;->z:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0$m;->y2(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAuthToken, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$c;->A:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", authTokenType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$c;->B:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", loginOptions "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$c;->z:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notifyOnAuthFailure "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/bv0$c;->C:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
