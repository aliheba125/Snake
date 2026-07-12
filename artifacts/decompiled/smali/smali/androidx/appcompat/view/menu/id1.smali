.class public final Landroidx/appcompat/view/menu/id1;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/id1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:I

.field public final n:Landroidx/appcompat/view/menu/ae1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/kd1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/kd1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/id1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroidx/appcompat/view/menu/ae1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/id1;->m:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/id1;->n:Landroidx/appcompat/view/menu/ae1;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Landroidx/appcompat/view/menu/id1;->m:I

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/id1;->n:Landroidx/appcompat/view/menu/ae1;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
