.class public Landroidx/appcompat/view/menu/k50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/k50;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/k50$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/k50$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/k50;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/k50;->m:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/k50;->m:Z

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/k50;->m:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/k50;->n:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/k50;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/appcompat/view/menu/k50;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k50;->o:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/k50;->m:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/k50;
    .locals 0

    iput-object p2, p0, Landroidx/appcompat/view/menu/k50;->o:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/k50;->m:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/k50;->n:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Landroidx/appcompat/view/menu/k50;->m:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/k50;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/k50;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
