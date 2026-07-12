.class public abstract Landroidx/appcompat/view/menu/tc1;
.super Landroidx/appcompat/view/menu/bc1;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/appcompat/view/menu/bz0;


# direct methods
.method public constructor <init>(ILandroidx/appcompat/view/menu/bz0;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/bc1;-><init>(I)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/tc1;->b:Landroidx/appcompat/view/menu/bz0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tc1;->b:Landroidx/appcompat/view/menu/bz0;

    new-instance v1, Landroidx/appcompat/view/menu/o2;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/o2;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bz0;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tc1;->b:Landroidx/appcompat/view/menu/bz0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/bz0;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/tb1;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tc1;->h(Landroidx/appcompat/view/menu/tb1;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tc1;->b:Landroidx/appcompat/view/menu/bz0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/bz0;->d(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jd1;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tc1;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jd1;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/tc1;->a(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public abstract h(Landroidx/appcompat/view/menu/tb1;)V
.end method
