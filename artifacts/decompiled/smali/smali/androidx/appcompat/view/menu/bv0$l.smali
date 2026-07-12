.class public Landroidx/appcompat/view/menu/bv0$l;
.super Landroidx/appcompat/view/menu/bv0$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/bv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic A:Landroidx/appcompat/view/menu/bv0;

.field public final z:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 9

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$l;->A:Landroidx/appcompat/view/menu/bv0;

    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v8}, Landroidx/appcompat/view/menu/bv0$m;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    iput-object p4, p0, Landroidx/appcompat/view/menu/bv0$l;->z:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "intent"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$l;->A:Landroidx/appcompat/view/menu/bv0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$l;->z:Landroid/accounts/Account;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/bv0;->C2(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->v2()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " calling onResult() on response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/bv0$m;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public w2()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$l;->z:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    return-void
.end method

.method public y2(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0$m;->y2(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", removeAccount, account "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$l;->z:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
