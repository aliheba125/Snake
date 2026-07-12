.class public Landroidx/appcompat/view/menu/bv0$h;
.super Landroidx/appcompat/view/menu/bv0$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/bv0;->F2(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Landroidx/appcompat/view/menu/c7;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A:I

.field public final synthetic B:Landroid/os/Bundle;

.field public final synthetic C:Landroidx/appcompat/view/menu/bv0;

.field public final synthetic z:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$h;->C:Landroidx/appcompat/view/menu/bv0;

    iput-object p9, p0, Landroidx/appcompat/view/menu/bv0$h;->z:Landroid/accounts/Account;

    iput p10, p0, Landroidx/appcompat/view/menu/bv0$h;->A:I

    iput-object p11, p0, Landroidx/appcompat/view/menu/bv0$h;->B:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p8}, Landroidx/appcompat/view/menu/bv0$m;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0$m;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/bv0$m;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public w2()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$h;->C:Landroidx/appcompat/view/menu/bv0;

    iget v1, p0, Landroidx/appcompat/view/menu/bv0$h;->A:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/bv0;->v2(Landroidx/appcompat/view/menu/bv0;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bv0;->K2(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/view/menu/bv0$h;->z:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$h;->z:Landroid/accounts/Account;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$h;->B:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public y2(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0$m;->y2(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAccountCredentialsForClone, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$h;->z:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
