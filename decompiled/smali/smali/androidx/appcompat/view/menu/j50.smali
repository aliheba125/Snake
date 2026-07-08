.class public Landroidx/appcompat/view/menu/j50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/j50;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/j50$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/j50$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/j50;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/j50;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/j50;->m:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/j50;->m:I

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/j50;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/j50;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/j50;-><init>()V

    iget v1, v0, Landroidx/appcompat/view/menu/j50;->m:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/appcompat/view/menu/j50;->m:I

    return-object v0
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/j50;->m:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroidx/appcompat/view/menu/j50;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
