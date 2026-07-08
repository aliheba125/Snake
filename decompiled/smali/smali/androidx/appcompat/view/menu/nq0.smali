.class public final synthetic Landroidx/appcompat/view/menu/nq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/er0$b;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/er0;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/appcompat/view/menu/d21;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/er0;Ljava/util/List;Landroidx/appcompat/view/menu/d21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nq0;->a:Landroidx/appcompat/view/menu/er0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/nq0;->b:Ljava/util/List;

    iput-object p3, p0, Landroidx/appcompat/view/menu/nq0;->c:Landroidx/appcompat/view/menu/d21;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/nq0;->a:Landroidx/appcompat/view/menu/er0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nq0;->b:Ljava/util/List;

    iget-object v2, p0, Landroidx/appcompat/view/menu/nq0;->c:Landroidx/appcompat/view/menu/d21;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/er0;->B(Landroidx/appcompat/view/menu/er0;Ljava/util/List;Landroidx/appcompat/view/menu/d21;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
