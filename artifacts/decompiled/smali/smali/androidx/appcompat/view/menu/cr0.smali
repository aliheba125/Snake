.class public final synthetic Landroidx/appcompat/view/menu/cr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/er0$b;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/er0;

.field public final synthetic b:Landroidx/appcompat/view/menu/d21;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/er0;Landroidx/appcompat/view/menu/d21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/cr0;->a:Landroidx/appcompat/view/menu/er0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/cr0;->b:Landroidx/appcompat/view/menu/d21;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/cr0;->a:Landroidx/appcompat/view/menu/er0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/cr0;->b:Landroidx/appcompat/view/menu/d21;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/er0;->w(Landroidx/appcompat/view/menu/er0;Landroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
