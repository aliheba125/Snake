.class public final Landroidx/appcompat/view/menu/c72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:J

.field public final synthetic n:Landroidx/appcompat/view/menu/y62;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y62;J)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/c72;->n:Landroidx/appcompat/view/menu/y62;

    iput-wide p2, p0, Landroidx/appcompat/view/menu/c72;->m:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/c72;->n:Landroidx/appcompat/view/menu/y62;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/c72;->m:J

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/y62;->C(Landroidx/appcompat/view/menu/y62;J)V

    return-void
.end method
