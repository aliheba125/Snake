.class public Landroidx/appcompat/view/menu/u6$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/u6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/u6$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:Landroid/content/IntentFilter;

.field public final n:Z

.field public final o:I

.field public final p:Ljava/lang/String;

.field public final q:I

.field public final r:I

.field public final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/u6$f$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/u6$f$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/u6$f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    .line 2
    iget-boolean v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/u6$f;->n:Z

    .line 3
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    iput v0, p0, Landroidx/appcompat/view/menu/u6$f;->o:I

    .line 4
    iget-object v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/u6$f;->p:Ljava/lang/String;

    .line 5
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    iput v0, p0, Landroidx/appcompat/view/menu/u6$f;->q:I

    .line 6
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    iput v0, p0, Landroidx/appcompat/view/menu/u6$f;->r:I

    .line 7
    iget p1, p1, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    iput p1, p0, Landroidx/appcompat/view/menu/u6$f;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroidx/appcompat/view/menu/u6;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/u6$f;->n:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/u6$f;->o:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6$f;->p:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/u6$f;->q:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/u6$f;->r:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/u6$f;->s:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/u6$f;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    iput-object v0, p0, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    .line 10
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/u6$f;->n:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/u6$f;->n:Z

    .line 11
    iget v0, p1, Landroidx/appcompat/view/menu/u6$f;->o:I

    iput v0, p0, Landroidx/appcompat/view/menu/u6$f;->o:I

    .line 12
    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/u6$f;->p:Ljava/lang/String;

    .line 13
    iget v0, p1, Landroidx/appcompat/view/menu/u6$f;->q:I

    iput v0, p0, Landroidx/appcompat/view/menu/u6$f;->q:I

    .line 14
    iget v0, p1, Landroidx/appcompat/view/menu/u6$f;->r:I

    iput v0, p0, Landroidx/appcompat/view/menu/u6$f;->r:I

    .line 15
    iget p1, p1, Landroidx/appcompat/view/menu/u6$f;->s:I

    iput p1, p0, Landroidx/appcompat/view/menu/u6$f;->s:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Landroidx/appcompat/view/menu/u6$f;->n:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Landroidx/appcompat/view/menu/u6$f;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6$f;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroidx/appcompat/view/menu/u6$f;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/appcompat/view/menu/u6$f;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/appcompat/view/menu/u6$f;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
