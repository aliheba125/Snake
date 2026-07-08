.class public Landroidx/appcompat/view/menu/bv0$a;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/bv0;->M1(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Landroid/accounts/IAccountManagerResponse;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:I

.field public final synthetic o:Landroidx/appcompat/view/menu/bv0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bv0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$a;->o:Landroidx/appcompat/view/menu/bv0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/bv0$a;->l:Landroid/accounts/IAccountManagerResponse;

    iput-object p3, p0, Landroidx/appcompat/view/menu/bv0$a;->m:Ljava/lang/String;

    iput p4, p0, Landroidx/appcompat/view/menu/bv0$a;->n:I

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Landroid/accounts/Account;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Landroid/accounts/Account;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0$a;->o:Landroidx/appcompat/view/menu/bv0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0$a;->l:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0$a;->m:Ljava/lang/String;

    iget v3, p0, Landroidx/appcompat/view/menu/bv0$a;->n:I

    invoke-static {p1, v1, v0, v2, v3}, Landroidx/appcompat/view/menu/bv0;->A2(Landroidx/appcompat/view/menu/bv0;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void
.end method
