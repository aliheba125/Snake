.class public Landroidx/appcompat/view/menu/bv0$k;
.super Landroidx/appcompat/view/menu/bv0$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/bv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public volatile A:[Landroid/accounts/Account;

.field public volatile B:Ljava/util/ArrayList;

.field public volatile C:I

.field public final D:Ljava/lang/String;

.field public final E:Z

.field public final synthetic F:Landroidx/appcompat/view/menu/bv0;

.field public final z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10

    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Landroidx/appcompat/view/menu/bv0$k;->F:Landroidx/appcompat/view/menu/bv0;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/appcompat/view/menu/bv0$m;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, v9, Landroidx/appcompat/view/menu/bv0$k;->A:[Landroid/accounts/Account;

    iput-object v0, v9, Landroidx/appcompat/view/menu/bv0$k;->B:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, v9, Landroidx/appcompat/view/menu/bv0$k;->C:I

    move-object v0, p5

    iput-object v0, v9, Landroidx/appcompat/view/menu/bv0$k;->z:[Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v9, Landroidx/appcompat/view/menu/bv0$k;->D:Ljava/lang/String;

    move/from16 v0, p8

    iput-boolean v0, v9, Landroidx/appcompat/view/menu/bv0$k;->E:Z

    return-void
.end method


# virtual methods
.method public A2()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/bv0$k;->C:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$k;->A:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$k;->B2()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    if-nez v0, :cond_2

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->x2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$k;->A:[Landroid/accounts/Account;

    iget v2, p0, Landroidx/appcompat/view/menu/bv0$k;->C:I

    aget-object v1, v1, v2

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$k;->z:[Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    const-string v1, "remote exception"

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/bv0$m;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public B2()V
    .locals 7

    const-string v0, "AccountManagerService"

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$m;->v2()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$k;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Landroid/accounts/Account;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    iget-object v6, p0, Landroidx/appcompat/view/menu/bv0$k;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " calling onResult() on response "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "accounts"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    invoke-interface {v1, v3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/bv0$m;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/bv0$m;->s:I

    if-nez p1, :cond_0

    const/4 p1, 0x5

    const-string v0, "null bundle"

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/bv0$m;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "booleanResult"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$k;->B:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$k;->A:[Landroid/accounts/Account;

    iget v1, p0, Landroidx/appcompat/view/menu/bv0$k;->C:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget p1, p0, Landroidx/appcompat/view/menu/bv0$k;->C:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/appcompat/view/menu/bv0$k;->C:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$k;->A2()V

    return-void
.end method

.method public w2()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$k;->F:Landroidx/appcompat/view/menu/bv0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$m;->x:Landroidx/appcompat/view/menu/c7;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$m;->m:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$k;->D:Ljava/lang/String;

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/bv0$k;->E:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/bv0;->L2(Landroidx/appcompat/view/menu/c7;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0$k;->A:[Landroid/accounts/Account;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$k;->A:[Landroid/accounts/Account;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0$k;->B:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/bv0$k;->C:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0$k;->A2()V

    return-void
.end method

.method public y2(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0$m;->y2(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAccountsByTypeAndFeatures, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$k;->z:[Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, ","

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
