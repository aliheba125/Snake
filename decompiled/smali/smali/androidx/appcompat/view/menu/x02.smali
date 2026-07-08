.class public final Landroidx/appcompat/view/menu/x02;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/x02;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:Landroid/os/Bundle;

.field public n:[Landroidx/appcompat/view/menu/hr;

.field public o:I

.field public p:Landroidx/appcompat/view/menu/ff;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/y22;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/y22;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/x02;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Landroidx/appcompat/view/menu/hr;ILandroidx/appcompat/view/menu/ff;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/x02;->m:Landroid/os/Bundle;

    iput-object p2, p0, Landroidx/appcompat/view/menu/x02;->n:[Landroidx/appcompat/view/menu/hr;

    iput p3, p0, Landroidx/appcompat/view/menu/x02;->o:I

    iput-object p4, p0, Landroidx/appcompat/view/menu/x02;->p:Landroidx/appcompat/view/menu/ff;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/x02;->m:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Landroidx/appcompat/view/menu/jr0;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Landroidx/appcompat/view/menu/x02;->n:[Landroidx/appcompat/view/menu/hr;

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget v2, p0, Landroidx/appcompat/view/menu/x02;->o:I

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Landroidx/appcompat/view/menu/x02;->p:Landroidx/appcompat/view/menu/ff;

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
