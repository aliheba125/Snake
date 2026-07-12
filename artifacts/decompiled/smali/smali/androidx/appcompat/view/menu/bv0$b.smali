.class public Landroidx/appcompat/view/menu/bv0$b;
.super Landroidx/appcompat/view/menu/bv0$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/bv0;->d2(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A:Landroid/accounts/IAccountManagerResponse;

.field public final synthetic B:Landroidx/appcompat/view/menu/c7;

.field public final synthetic C:I

.field public final synthetic D:Landroidx/appcompat/view/menu/bv0;

.field public final synthetic z:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Landroidx/appcompat/view/menu/c7;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$b;->D:Landroidx/appcompat/view/menu/bv0;

    iput-object p9, p0, Landroidx/appcompat/view/menu/bv0$b;->z:Landroid/accounts/Account;

    iput-object p10, p0, Landroidx/appcompat/view/menu/bv0$b;->A:Landroid/accounts/IAccountManagerResponse;

    iput-object p11, p0, Landroidx/appcompat/view/menu/bv0$b;->B:Landroidx/appcompat/view/menu/c7;

    iput p12, p0, Landroidx/appcompat/view/menu/bv0$b;->C:I

    invoke-direct/range {p0 .. p8}, Landroidx/appcompat/view/menu/bv0$m;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "booleanResult"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$b;->D:Landroidx/appcompat/view/menu/bv0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$b;->A:Landroid/accounts/IAccountManagerResponse;

    iget-object v4, p0, Landroidx/appcompat/view/menu/bv0$b;->z:Landroid/accounts/Account;

    iget-object v5, p0, Landroidx/appcompat/view/menu/bv0$b;->B:Landroidx/appcompat/view/menu/c7;

    iget v6, p0, Landroidx/appcompat/view/menu/bv0$b;->C:I

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/bv0;->z2(Landroidx/appcompat/view/menu/bv0;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Landroidx/appcompat/view/menu/c7;I)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/bv0$m;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public w2()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$b;->z:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

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

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$b;->z:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
