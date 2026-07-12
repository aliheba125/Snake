.class public final Landroidx/appcompat/view/menu/d7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/d7;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Landroidx/appcompat/view/menu/d7;

.field public static final o:Landroidx/appcompat/view/menu/d7;

.field public static final p:Landroidx/appcompat/view/menu/d7;

.field public static final q:Landroidx/appcompat/view/menu/d7;


# instance fields
.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/d7;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/d7;-><init>(I)V

    sput-object v0, Landroidx/appcompat/view/menu/d7;->n:Landroidx/appcompat/view/menu/d7;

    new-instance v0, Landroidx/appcompat/view/menu/d7;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/d7;-><init>(I)V

    sput-object v0, Landroidx/appcompat/view/menu/d7;->o:Landroidx/appcompat/view/menu/d7;

    new-instance v0, Landroidx/appcompat/view/menu/d7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/d7;-><init>(I)V

    sput-object v0, Landroidx/appcompat/view/menu/d7;->p:Landroidx/appcompat/view/menu/d7;

    new-instance v0, Landroidx/appcompat/view/menu/d7;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/d7;-><init>(I)V

    sput-object v0, Landroidx/appcompat/view/menu/d7;->q:Landroidx/appcompat/view/menu/d7;

    new-instance v0, Landroidx/appcompat/view/menu/d7$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/d7$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/d7;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/d7;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/d7;->m:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    const v0, 0x186a0

    rem-int/2addr p0, v0

    return p0
.end method

.method public static b(II)I
    .locals 1

    const v0, 0x186a0

    mul-int/2addr p0, v0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(I)I
    .locals 1

    const v0, 0x186a0

    div-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/d7;

    if-eqz v1, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/d7;

    iget v1, p0, Landroidx/appcompat/view/menu/d7;->m:I

    iget p1, p1, Landroidx/appcompat/view/menu/d7;->m:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/d7;->m:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/d7;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroidx/appcompat/view/menu/d7;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
