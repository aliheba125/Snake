.class public abstract Landroidx/appcompat/view/menu/yy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public m:J

.field public n:Landroidx/appcompat/view/menu/cz0;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 2
    sget-object v2, Landroidx/appcompat/view/menu/kz0;->g:Landroidx/appcompat/view/menu/cz0;

    invoke-direct {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/yy0;-><init>(JLandroidx/appcompat/view/menu/cz0;)V

    return-void
.end method

.method public constructor <init>(JLandroidx/appcompat/view/menu/cz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/appcompat/view/menu/yy0;->m:J

    iput-object p3, p0, Landroidx/appcompat/view/menu/yy0;->n:Landroidx/appcompat/view/menu/cz0;

    return-void
.end method
