.class public Landroidx/appcompat/view/menu/bv0$d;
.super Landroidx/appcompat/view/menu/bv0$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/bv0;->M0(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A:[Ljava/lang/String;

.field public final synthetic B:Landroid/os/Bundle;

.field public final synthetic C:Ljava/lang/String;

.field public final synthetic D:Landroidx/appcompat/view/menu/bv0;

.field public final synthetic z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$d;->D:Landroidx/appcompat/view/menu/bv0;

    iput-object p10, p0, Landroidx/appcompat/view/menu/bv0$d;->z:Ljava/lang/String;

    iput-object p11, p0, Landroidx/appcompat/view/menu/bv0$d;->A:[Ljava/lang/String;

    iput-object p12, p0, Landroidx/appcompat/view/menu/bv0$d;->B:Landroid/os/Bundle;

    iput-object p13, p0, Landroidx/appcompat/view/menu/bv0$d;->C:Ljava/lang/String;

    invoke-direct/range {p0 .. p9}, Landroidx/appcompat/view/menu/bv0$m;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public w2()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0$m;->v:Landroid/accounts/IAccountAuthenticator;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$m;->m:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0$d;->z:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/bv0$d;->A:[Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/bv0$d;->B:Landroid/os/Bundle;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public y2(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0$m;->y2(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", addAccount, accountType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$d;->C:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requiredFeatures "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$d;->A:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
