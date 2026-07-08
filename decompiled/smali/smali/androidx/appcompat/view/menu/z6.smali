.class public Landroidx/appcompat/view/menu/z6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/z6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:Z

.field public final n:Z

.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/z6$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z6$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/z6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/z6;->m:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/z6;->n:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/z6;->o:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/z6;->m:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/z6;->n:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/z6;->o:Z

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/z6;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/z6;->m:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/z6;->m:Z

    .line 8
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/z6;->n:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/z6;->n:Z

    .line 9
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/z6;->o:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/z6;->o:Z

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/z6;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/z6;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z6;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/z6;->m:Z

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Landroidx/appcompat/view/menu/z6;->m:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Landroidx/appcompat/view/menu/z6;->n:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Landroidx/appcompat/view/menu/z6;->o:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
