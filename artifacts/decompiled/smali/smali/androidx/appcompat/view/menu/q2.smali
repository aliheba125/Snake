.class public abstract Landroidx/appcompat/view/menu/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;)Landroidx/appcompat/view/menu/o2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/bp0;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/bp0;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/o2;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/o2;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
