.class public final Landroidx/appcompat/view/menu/ck1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:J

.field public final synthetic n:Landroidx/appcompat/view/menu/oh1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/oh1;J)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck1;->n:Landroidx/appcompat/view/menu/oh1;

    iput-wide p2, p0, Landroidx/appcompat/view/menu/ck1;->m:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck1;->n:Landroidx/appcompat/view/menu/oh1;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/ck1;->m:J

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/oh1;->x(Landroidx/appcompat/view/menu/oh1;J)V

    return-void
.end method
