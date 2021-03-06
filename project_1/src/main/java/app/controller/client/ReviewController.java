package app.controller.client;

import app.controller.BaseController;
import app.model.Review;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@Controller
@RequestMapping(value = "/reviews")
public class ReviewController extends BaseController {

    @PostMapping(value = "/comment")
    @ResponseBody
    public ResponseEntity createReview(@RequestParam  String content, @RequestParam Integer bookId, @RequestParam String email, HttpServletResponse response) throws IOException {
        Review review = new Review();
        review.setContent(content.trim());
        review.setBook(bookService.findById(bookId));
        review.setTime(new Date());
        review.setUser(userService.findByEmail(email));
        reviewService.saveOrUpdate(review);
        return ResponseEntity.status(HttpStatus.OK).body(HttpStatus.OK);
    }
}
