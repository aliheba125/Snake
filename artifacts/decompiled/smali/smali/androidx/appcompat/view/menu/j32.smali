.class public final synthetic Landroidx/appcompat/view/menu/j32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic m:Landroidx/appcompat/view/menu/l32;

.field public synthetic n:I

.field public synthetic o:Ljava/lang/Exception;

.field public synthetic p:[B

.field public synthetic q:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/l32;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/j32;->m:Landroidx/appcompat/view/menu/l32;

    iput p2, p0, Landroidx/appcompat/view/menu/j32;->n:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/j32;->o:Ljava/lang/Exception;

    iput-object p4, p0, Landroidx/appcompat/view/menu/j32;->p:[B

    iput-object p5, p0, Landroidx/appcompat/view/menu/j32;->q:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/j32;->m:Landroidx/appcompat/view/menu/l32;

    iget v1, p0, Landroidx/appcompat/view/menu/j32;->n:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/j32;->o:Ljava/lang/Exception;

    iget-object v3, p0, Landroidx/appcompat/view/menu/j32;->p:[B

    iget-object v4, p0, Landroidx/appcompat/view/menu/j32;->q:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/l32;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
