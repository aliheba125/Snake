.class public final Lcom/google/android/gms/common/api/Status;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lcom/google/android/gms/common/api/Status;

.field public static final s:Lcom/google/android/gms/common/api/Status;

.field public static final t:Lcom/google/android/gms/common/api/Status;

.field public static final u:Lcom/google/android/gms/common/api/Status;

.field public static final v:Lcom/google/android/gms/common/api/Status;

.field public static final w:Lcom/google/android/gms/common/api/Status;

.field public static final x:Lcom/google/android/gms/common/api/Status;

.field public static final y:Lcom/google/android/gms/common/api/Status;


# instance fields
.field public final m:I

.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:Landroid/app/PendingIntent;

.field public final q:Landroidx/appcompat/view/menu/ef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->r:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->s:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->t:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->u:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->v:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->w:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->y:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->x:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Landroidx/appcompat/view/menu/uh1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/uh1;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/app/PendingIntent;Landroidx/appcompat/view/menu/ef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/Status;->m:I

    iput p2, p0, Lcom/google/android/gms/common/api/Status;->n:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/Status;->o:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/common/api/Status;->p:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/google/android/gms/common/api/Status;->q:Landroidx/appcompat/view/menu/ef;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Landroidx/appcompat/view/menu/ef;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/ef;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x11

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(Landroidx/appcompat/view/menu/ef;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/ef;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->i()Landroid/app/PendingIntent;

    move-result-object v4

    move-object v0, p0

    move v2, p3

    move-object v3, p2

    move-object v5, p1

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Landroidx/appcompat/view/menu/ef;)V

    return-void
.end method


# virtual methods
.method public d()Landroidx/appcompat/view/menu/ef;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->q:Landroidx/appcompat/view/menu/ef;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->m:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->m:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->n:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->n:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->o:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->p:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->p:Landroid/app/PendingIntent;

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->q:Landroidx/appcompat/view/menu/ef;

    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->q:Landroidx/appcompat/view/menu/ef;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->n:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/common/api/Status;->p:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/google/android/gms/common/api/Status;->q:Landroidx/appcompat/view/menu/ef;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/wf0;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->o:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->p:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->n:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/fd;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroidx/appcompat/view/menu/wf0;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/wf0$a;

    move-result-object v0

    const-string v1, "statusCode"

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/wf0$a;->a(Ljava/lang/String;Ljava/lang/Object;)Landroidx/appcompat/view/menu/wf0$a;

    const-string v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->p:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/wf0$a;->a(Ljava/lang/String;Ljava/lang/Object;)Landroidx/appcompat/view/menu/wf0$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/wf0$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->p:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->d()Landroidx/appcompat/view/menu/ef;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x3e8

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->m:I

    invoke-static {p1, p2, v1}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
