.class public abstract Landroidx/appcompat/view/menu/l21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/l21$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/appcompat/view/menu/gp;
.end method

.method public abstract c()Landroidx/appcompat/view/menu/k21;
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l21;->a()Landroidx/appcompat/view/menu/gp;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method
