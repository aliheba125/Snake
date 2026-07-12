.class public final Landroidx/appcompat/view/menu/md2;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/md2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:I

.field public final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/he2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/he2;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/md2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/md2;->m:Z

    iput-object p2, p0, Landroidx/appcompat/view/menu/md2;->n:Ljava/lang/String;

    invoke-static {p3}, Landroidx/appcompat/view/menu/uf2;->a(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/appcompat/view/menu/md2;->o:I

    invoke-static {p4}, Landroidx/appcompat/view/menu/sm1;->a(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/appcompat/view/menu/md2;->p:I

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/md2;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/md2;->m:Z

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/md2;->p:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/sm1;->a(I)I

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/md2;->o:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/uf2;->a(I)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/md2;->m:Z

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/md2;->n:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget v1, p0, Landroidx/appcompat/view/menu/md2;->o:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v1, p0, Landroidx/appcompat/view/menu/md2;->p:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
