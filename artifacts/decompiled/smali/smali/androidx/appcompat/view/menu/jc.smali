.class public final Landroidx/appcompat/view/menu/jc;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/jc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/sh1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/sh1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/jc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jc;->m:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public d()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jc;->m:Landroid/content/Intent;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/jc;->m:Landroid/content/Intent;

    const-string v1, "google.message_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/jc;->m:Landroid/content/Intent;

    const-string v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final i()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/jc;->m:Landroid/content/Intent;

    const-string v1, "google.product_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/jc;->m:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/jc;->m:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
