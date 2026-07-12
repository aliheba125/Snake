.class public Landroidx/appcompat/view/menu/i31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/i31;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:I

.field public n:I

.field public o:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/i31$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/i31$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/i31;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/i31;->m:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/i31;->n:I

    const-class v0, Landroid/content/ComponentName;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Landroidx/appcompat/view/menu/i31;->o:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i31;->n:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/i31;->m:I

    return-void
.end method

.method public c(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/i31;->o:Landroid/content/ComponentName;

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/i31;->n:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i31;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroidx/appcompat/view/menu/i31;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i31;->o:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
