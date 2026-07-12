.class public final synthetic Landroidx/appcompat/view/menu/rq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/er0$b;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/er0;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Landroidx/appcompat/view/menu/zb$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/er0;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rq0;->a:Landroidx/appcompat/view/menu/er0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/rq0;->b:Ljava/util/Map;

    iput-object p3, p0, Landroidx/appcompat/view/menu/rq0;->c:Landroidx/appcompat/view/menu/zb$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/rq0;->a:Landroidx/appcompat/view/menu/er0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/rq0;->b:Ljava/util/Map;

    iget-object v2, p0, Landroidx/appcompat/view/menu/rq0;->c:Landroidx/appcompat/view/menu/zb$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/er0;->H(Landroidx/appcompat/view/menu/er0;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;Landroid/database/Cursor;)Landroidx/appcompat/view/menu/zb;

    move-result-object p1

    return-object p1
.end method
