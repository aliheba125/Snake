.class public Landroidx/appcompat/view/menu/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/q6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:I

.field public n:Landroidx/appcompat/view/menu/n6;

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Landroidx/appcompat/view/menu/p6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/q6$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/q6$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/q6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q6;->a(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/q6;->m:I

    const-class v0, Landroidx/appcompat/view/menu/n6;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/n6;

    iput-object v0, p0, Landroidx/appcompat/view/menu/q6;->n:Landroidx/appcompat/view/menu/n6;

    sget-object v0, Landroidx/appcompat/view/menu/n6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/q6;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/q6;->p:Ljava/util/List;

    const-class v0, Landroidx/appcompat/view/menu/p6;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/p6;

    iput-object p1, p0, Landroidx/appcompat/view/menu/q6;->q:Landroidx/appcompat/view/menu/p6;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/q6;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q6;->n:Landroidx/appcompat/view/menu/n6;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q6;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q6;->p:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q6;->q:Landroidx/appcompat/view/menu/p6;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
