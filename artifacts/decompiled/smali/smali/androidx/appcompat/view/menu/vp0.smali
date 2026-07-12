.class public Landroidx/appcompat/view/menu/vp0;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/vp0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:I

.field public final n:Z

.field public final o:Z

.field public final p:I

.field public final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ag1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ag1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/vp0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/vp0;->m:I

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/vp0;->n:Z

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/vp0;->o:Z

    iput p4, p0, Landroidx/appcompat/view/menu/vp0;->p:I

    iput p5, p0, Landroidx/appcompat/view/menu/vp0;->q:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/vp0;->p:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/vp0;->q:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/vp0;->n:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/vp0;->o:Z

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/vp0;->m:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vp0;->n()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vp0;->i()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vp0;->k()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vp0;->d()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vp0;->f()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
